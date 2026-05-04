import Link from "next/link";

export function Navbar() {
  return (
    <nav style={{ display: "flex", justifyContent: "space-between", padding: "1rem 1.5rem", background: "#344e41", color: "#fff" }}>
      <Link href="/">Thriftly</Link>
      <div style={{ display: "flex", gap: "1rem" }}>
        <Link href="/products">Products</Link>
        <Link href="/seller">Seller</Link>
        <Link href="/admin">Admin</Link>
      </div>
    </nav>
  );
}
