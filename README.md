# Thriftly

Thriftly is a production-ready (MVP+) multi-vendor e-commerce platform inspired by Myntra/Amazon workflows, built with **Next.js + Firebase + Razorpay**, ready for **Vercel deployment**.

## Features

### 1) User System
- Email/password + Google authentication (Firebase Auth)
- Profile model with role support (`buyer`, `seller`, `admin`)
- Address management per user

### 2) Seller System
- Seller onboarding via registration request
- Admin approval flow
- Seller dashboard surface for product CRUD and order handling

### 3) Product System
- Pinterest-style product grid
- Product detail page with condition rating (1–10), seller card, badges
- Filter panel (size/brand/price/condition)

### 4) Cart & Checkout
- Add to cart / Buy now surface
- Address selection (schema-ready)
- Razorpay + COD mode support design

### 5) Order System
- Order history and tracking-ready schema
- Seller-side order panel concepts

### 6) Return System
- 3-day return request policy
- Admin approval status model

### 7) Admin Panel
- Seller approval queue
- User/order/dispute moderation area

### 8) Trust Features
- Verified seller badge
- COD availability indication
- Return policy visibility
- Ratings/reviews-ready schema

### 9) UI Design
- Olive-green clean minimal aesthetic
- Mobile-first responsive layout
- Card-based, smooth UX-ready structure

## Tech Stack
- Next.js App Router (TypeScript)
- Firebase (Auth + Firestore)
- Razorpay server route integration
- Vercel deployment-ready

## Project Structure
- `app/` route-based pages and API handlers
- `components/` reusable UI modules
- `lib/firebase.ts` Firebase initialization
- `types/` domain models

## Firebase Setup
1. Create a Firebase project.
2. Enable **Authentication** providers:
   - Email/Password
   - Google
3. Create **Cloud Firestore** in production mode.
4. Add web app and copy Firebase config values into `.env.local`.
5. Suggested collections:
   - `users`
   - `sellerRequests`
   - `sellers`
   - `products`
   - `orders`
   - `returns`
   - `reviews`

## Firestore Data Model (Suggested)

### `users/{uid}`
```ts
{ uid, name, email, role, addresses: Address[], createdAt }
```

### `sellerRequests/{requestId}`
```ts
{ uid, businessName, gstin, status: 'pending'|'approved'|'rejected', createdAt }
```

### `products/{productId}`
```ts
{ sellerId, title, brand, price, stock, condition, sizes, media: {images:string[], videoUrl?:string}, codAvailable, verifiedSeller }
```

### `orders/{orderId}`
```ts
{ userId, items, subtotal, paymentMode: 'razorpay'|'cod', paymentStatus, orderStatus, address, sellerIds, trackingTimeline, createdAt }
```

### `returns/{returnId}`
```ts
{ orderId, userId, reason, status: 'requested'|'approved'|'rejected'|'refunded', requestedAt }
```

## Razorpay Setup
1. Create Razorpay account and generate API Keys.
2. Fill `.env.local`:
   - `NEXT_PUBLIC_RAZORPAY_KEY_ID`
   - `RAZORPAY_KEY_SECRET`
3. Use `/api/create-order` to generate order before checkout.
4. Configure webhook URL: `/api/webhooks/razorpay`.

## Vercel Deployment
1. Push repository to GitHub.
2. Import project in Vercel.
3. Add environment variables from `.env.example`.
4. Deploy.

## Run Locally
```bash
npm install
npm run dev
```

Visit `http://localhost:3000`.
