"use client"
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import { loginSchema } from "@/schemas/login-schema"
import React, { useState } from "react"
import { useRouter } from "next/navigation"
import axios from "axios"
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
} from "@/components/ui/field"
import { Input } from "@/components/ui/input"

export function LoginForm({className, ...props}: React.ComponentProps<"div">) {
  const [username, setUsername] = useState("")
  const [password, setPassword] = useState("")
  const [error, setError] = useState("")
  const router = useRouter();

  const handleSubmit = async (e: React.SyntheticEvent<HTMLFormElement>) => {
    e.preventDefault()
    const result = loginSchema.safeParse({ username, password })
    if (!result.success) {
      setError(result.error.errors[0].message)
      return
    }
    try {
      const response = await axios.post("http://localhost:8080/auth/login", {
        username,
        password,
      })
      // Aquí puedes guardar el token, redirigir, etc.
      localStorage.setItem("token", response.data.token)
      console.log("Login exitoso:", response.data)
      router.push("/dashboard");
    } catch (err: any) {
      setError("Usuario o contraseña incorrectos")
    }
  }
  return (
    <div className={cn("flex flex-col gap-6", className)} {...props}>
      <Card>
        <CardHeader>
          <CardTitle>Login to your account</CardTitle>
          <CardDescription>
            Enter your username below to login to your account
          </CardDescription>
        </CardHeader>
        <CardContent>
          {error && (
            <div className="mb-4 text-center text-red-500 font-semibold">
              {error}
            </div>
          )}
          <form onSubmit={handleSubmit}>
            <FieldGroup>
              <Field>
                <FieldLabel htmlFor="email">Username</FieldLabel>
                <Input
                  id="email"
                  type="username"
                  placeholder="user1"
                  value={username}
                  onChange={e => setUsername(e.target.value)}
                  required
                />
              </Field>
              <Field>
                <div className="flex items-center">
                  <FieldLabel htmlFor="password">Password</FieldLabel>
                  <a
                    href="#"
                    className="ml-auto inline-block text-sm underline-offset-4 hover:underline"
                  >
                    Forgot your password?
                  </a>
                </div>
                <Input 
                  id="password" 
                  type="password" 
                  value={password} 
                  onChange={e => 
                  setPassword(e.target.value)} 
                  required />
              </Field>
              <Field>
                <Button type="submit">Login</Button>
                <Button variant="outline" type="button">
                  Login with Google
                </Button>
                <FieldDescription className="text-center">
                  Don&apos;t have an account? <a href="#">Sign up</a>
                </FieldDescription>
              </Field>
            </FieldGroup>
          </form>
        </CardContent>
      </Card>
    </div>
  )
}
