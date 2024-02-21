import React, { useState, useEffect } from 'react';
import './NutriLife.css'

function NutriLifeList() {
  const [items, setItems] = useState([]);
  const [selectedItem, setSelectedItem] = useState(null);

  useEffect(() => {
    async function fetchItems() {
      try {
        const response = await fetch('http://localhost:3000/nutriLife');
        if (!response.ok) {
          throw new Error('Failed to fetch items');
        }
        const data = await response.json();
        setItems(data.nutriLifes); // Assuming the response is an object with an 'items' property
      } catch (error) {
        console.error(error);
      }
    }

    fetchItems();
  }, []);

  const handleClick = (itemPrognosis) => {
    // Find the item object based on itemId
    const clickedItem = items.find(item => item.prognosis === itemPrognosis);
    setSelectedItem(clickedItem);
  };

  const closeModal = () => {
    setSelectedItem(null);
  };

  return (
    <div>
      
      <h1>NutriLifes</h1>
      <ul>
        {items && items.map(item => (
          <li
            className="nutriLife" 
            key={item.prognosis}
            onClick={() => handleClick(item.prognosis)}
          >
            {item.prognosis}
          </li>// Assuming each item has an 'id' and 'name' property
        ))}
      </ul>
      {selectedItem && (
        <div className="modal">
          <div className="modal-content">
            <span className="close" onClick={closeModal}>&times;</span>
            <h2>{selectedItem.prognosis}</h2>
            <h3>Guidelines:</h3>
            {selectedItem.guidelines.split('\n').map((guideline, index) => (
              <li className="guideline" key={index}>{guideline}<br></br></li>
            ))}
            <h3>Nutrition:</h3>
            {selectedItem.nutrition.split('\n').map((nutrition, index) => (
              <li className="guideline" key={index}>{nutrition}<br></br></li>
            ))}
            {/* Additional item details can be displayed here */}
          </div>
        </div>
      )}
    </div>
  );
}

export default NutriLifeList;