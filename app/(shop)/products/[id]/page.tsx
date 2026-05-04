import { notFound } from "next/navigation";
import { getFeaturedProducts } from "@/lib/mock-data";

export default function ProductDetail({ params }: { params: { id: string } }) {
  const product = getFeaturedProducts().find((p) => p.id === params.id);
  if (!product) return notFound();

  return (
    <section className="card">
      <h2>{product.title}</h2>
      <p>Brand: {product.brand}</p>
      <p>Condition: {product.condition}/10</p>
      <p>
        Seller: {product.sellerName} <span className="badge badge-verified">Verified Seller</span>
      </p>
      <p>₹{product.price}</p>
      <div style={{ display: "flex", gap: ".5rem" }}>
        <button className="btn btn-primary">Add to Cart</button>
        <button className="btn btn-soft">Buy Now</button>
      </div>
      <p>COD Available • Return request within 3 days.</p>
    </section>
  );
}
