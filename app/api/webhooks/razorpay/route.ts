import { NextResponse } from "next/server";

export async function POST(req: Request) {
  const signature = req.headers.get("x-razorpay-signature");
  const body = await req.text();

  if (!signature || !body) {
    return NextResponse.json({ ok: false }, { status: 400 });
  }

  return NextResponse.json({ ok: true, message: "Webhook received" });
}
