package com.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.hotel.entity.enumeration.TypeRoom;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "type_room")
@NoArgsConstructor
@Getter @Setter
public class TypeRoomEntity extends BaseEntity{

	@Column(name = "type_room")
	@Enumerated(EnumType.STRING)
	private TypeRoom typeRoom;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "price_id")
	private PriceEntity price;
}
