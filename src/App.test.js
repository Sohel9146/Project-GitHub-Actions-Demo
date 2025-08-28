import { render, screen } from '@testing-library/react';
import App from './App';

test('renders React CI/CD Demo text', () => {
  render(<App />);
  const linkElement = screen.getByText(/React CI\/CD Demo/i);
  expect(linkElement).toBeInTheDocument();
});

