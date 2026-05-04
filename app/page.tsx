import { ProductGrid } from "@/components/product-grid";
import { getFeaturedProducts } from "@/lib/mock-data";

export default function HomePage() {
  return (
    <section>
      <h1>Thriftly</h1>
      <p>Pre-loved fashion with trusted sellers, buyer protection, and fast checkout.</p>
      <ProductGrid products={getFeaturedProducts()} />
    </section>
  );
}
