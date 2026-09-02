package com.mostecole.repository;

import com.mostecole.entity.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface MessageRepository extends JpaRepository<Message, UUID> {
    List<Message> findByReceiverIdOrderByCreatedAtDesc(UUID receiverId);
    List<Message> findBySenderIdOrderByCreatedAtDesc(UUID senderId);
    long countByReceiverIdAndReadAtIsNull(UUID receiverId);
}
