package com.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "number")
@NoArgsConstructor
@Getter @Setter
public class NumberEntity extends BaseEntity{
	
	@Column(name = "number_of_room")
	private int numberOfRoom;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "type_room_id")
	private TypeRoomEntity typeRoom;
	
	@Column(name = "description")
	private String description;
}
