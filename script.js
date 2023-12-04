document.addEventListener('DOMContentLoaded', () => {
  const generalBtn = document.getElementById('general');
  const defenseBtn = document.getElementById('defense');
  const attaqueBtn = document.getElementById('attaque');
  const dataDisplay = document.getElementById('dataDisplay');

  generalBtn.addEventListener('click', () => {
    fetchData('/api/generale');
  });

  defenseBtn.addEventListener('click', () => {
    fetchData('/api/defense');
  });

  attaqueBtn.addEventListener('click', () => {
    fetchData('/api/attaque');
  });

  function fetchData(endpoint) {
    fetch(`http://localhost:3001${endpoint}`)
      .then(response => response.json())
      .then(data => {
        const tableHTML = generateTableHTML(data);
        dataDisplay.innerHTML = tableHTML;
      })
      .catch(error => console.error('Error fetching data:', error));
  }

  function generateTableHTML(data) {
    if (!data || data.length === 0) {
      return '<p>No data available</p>';
    }

    const columns = Object.keys(data[0]);
    const tableHTML = `
      <table>
        <thead>
          <tr>${columns.map(column => `<th>${column}</th>`).join('')}</tr>
        </thead>
        <tbody>
          ${data.map(row => `<tr>${columns.map(column => `<td>${row[column]}</td>`).join('')}</tr>`).join('')}
        </tbody>
      </table>
    `;
    return tableHTML;
  }
});
