import { Product } from "@/types";

const products: Product[] = [
  { id: "p1", title: "Olive Utility Jacket", brand: "H&M", price: 1499, condition: 9, sellerId: "s1", sellerName: "Urban Rewear" },
  { id: "p2", title: "Vintage Denim", brand: "Levi's", price: 1899, condition: 8, sellerId: "s2", sellerName: "Denim Dock" },
  { id: "p3", title: "Oversized Tee", brand: "Zara", price: 799, condition: 9, sellerId: "s1", sellerName: "Urban Rewear" }
];

export const getFeaturedProducts = () => products;
