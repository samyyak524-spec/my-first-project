import { ProductGrid } from "@/components/product-grid";
import { ProductFilters } from "@/components/product-filters";
import { getFeaturedProducts } from "@/lib/mock-data";

export default function ProductsPage() {
  return (
    <div style={{ display: "grid", gridTemplateColumns: "280px 1fr", gap: "1rem" }}>
      <ProductFilters />
      <ProductGrid products={getFeaturedProducts()} />
    </div>
  );
}
