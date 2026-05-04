import Link from "next/link";
import { Product } from "@/types";

export function ProductGrid({ products }: { products: Product[] }) {
  return (
    <div className="grid-pin">
      {products.map((p) => (
        <article className="pin-item card" key={p.id}>
          <Link href={`/products/${p.id}`}>
            <h3>{p.title}</h3>
            <p>{p.brand}</p>
            <p>₹{p.price}</p>
            <p>Condition {p.condition}/10</p>
            <span className="badge badge-verified">Verified</span>
          </Link>
        </article>
      ))}
    </div>
  );
}
