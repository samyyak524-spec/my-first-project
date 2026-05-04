export type Role = "buyer" | "seller" | "admin";

export interface UserProfile {
  uid: string;
  name: string;
  email: string;
  role: Role;
  addresses: Address[];
}

export interface Address {
  id: string;
  line1: string;
  city: string;
  state: string;
  pinCode: string;
  phone: string;
}

export interface Product {
  id: string;
  title: string;
  brand: string;
  price: number;
  condition: number;
  sellerId: string;
  sellerName: string;
}
