package com.Book.Modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class book {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String title;
	private String author;
	private double price;
	private int quantity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public book(int id, String title, String author, double price, int quantity) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.price = price;
		this.quantity = quantity;
	}
	public book() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "book [id=" + id + ", title=" + title + ", author=" + author + ", price=" + price + ", quantity="
				+ quantity + "]";
	}
}
