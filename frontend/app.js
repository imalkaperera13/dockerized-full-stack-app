async function loadProducts() {
  const productList = document.getElementById("productList");
  productList.innerHTML = "<li>Loading...</li>";

  try {
    const response = await fetch("http://localhost:5000/api/products");
    const products = await response.json();

    productList.innerHTML = "";

    products.forEach((product) => {
      const li = document.createElement("li");
      li.textContent = `${product.name} - $${product.price}`;
      productList.appendChild(li);
    });
  } catch (error) {
    productList.innerHTML = "<li>Failed to load products</li>";
    console.error(error);
  }
}