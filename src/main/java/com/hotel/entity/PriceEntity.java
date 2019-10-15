package com.hotel.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "price")
@NoArgsConstructor
@Getter @Setter
public class PriceEntity extends BaseEntity{
	
	@Column(name = "price", columnDefinition = "DECIMAL(5,2)")
	private BigDecimal price;
	
	
}
