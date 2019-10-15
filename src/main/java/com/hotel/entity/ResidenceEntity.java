package com.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.joda.time.LocalDate;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "residence")
@NoArgsConstructor
@Getter @Setter
public class ResidenceEntity extends BaseEntity{

	 @OneToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "user_id")
	 private UserEntity user_id;
	 
	 @OneToOne(fetch = FetchType.LAZY)
	 @JoinColumn(name = "number_id")
	 private NumberEntity number_id;
	
	 @Column(name = "arrivel_date", columnDefinition = "DATE")
	 private LocalDate arrivelDate;
	 
	 @Column(name = "departure_date", columnDefinition = "DATE")
	 private LocalDate departureDate;
}
