export function ProductFilters() {
  return (
    <aside className="card">
      <h3>Filters</h3>
      <label>Brand<input className="input" placeholder="Nike, Zara..." /></label>
      <label>Size<select className="input"><option>Any</option><option>S</option><option>M</option></select></label>
      <label>Condition<select className="input"><option>Any</option><option>8+</option></select></label>
      <label>Price<input className="input" type="range" /></label>
    </aside>
  );
}
