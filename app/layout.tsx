import "./globals.css";
import type { Metadata } from "next";
import { Inter } from "next/font/google";
import { Navbar } from "@/components/navbar";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Thriftly | Sustainable Multi-vendor Marketplace",
  description: "Startup-ready multi-vendor e-commerce platform.",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <Navbar />
        <main className="mx-auto min-h-screen max-w-7xl px-4 pb-16 pt-6">{children}</main>
      </body>
    </html>
  );
}
