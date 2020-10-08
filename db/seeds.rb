# Client Seed
Client.create(name: "Client Name 1")
Client.create(name: "Client Name 2")
Client.create(name: "Client Name 3")
Client.create(name: "Client Name 4")
Client.create(name: "Client Name 5")

# Events Seed
Event.create(client_id: 1, event_name: "Event 1", event_description: "Specific Event Description 1", event_image: "Link Image Event 1", slug: "SLUG 1", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 100, ticket_price: 1500)
Event.create(client_id: 1, event_name: "Event 2", event_description: "Specific Event Description 2", event_image: "Link Image Event 2", slug: "SLUG 2", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 90, ticket_price: 1200)
Event.create(client_id: 2, event_name: "Event 3", event_description: "Specific Event Description 3", event_image: "Link Image Event 3", slug: "SLUG 3", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 10, ticket_price: 3500)
Event.create(client_id: 3, event_name: "Event 4", event_description: "Specific Event Description 4", event_image: "Link Image Event 4", slug: "SLUG 4", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 5, ticket_price: 1000)
Event.create(client_id: 4, event_name: "Event 5", event_description: "Specific Event Description 5", event_image: "Link Image Event 5", slug: "SLUG 5", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 80, ticket_price: 6990)
Event.create(client_id: 4, event_name: "Event 6", event_description: "Specific Event Description 6", event_image: "Link Image Event 6", slug: "SLUG 6", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 100, ticket_price: 2590)
Event.create(client_id: 5, event_name: "Event 7", event_description: "Specific Event Description 7", event_image: "Link Image Event 7", slug: "SLUG 7", start_date: Time.now.to_datetime, publication_date: "" , publication_state: "Created", tickets_avaible: 19, ticket_price: 2000)

# Ticket Seed
Ticket.create(event_id: 1, buyer_name: "Buyer Name 1", buyer_mail: "Buyer Mail 1", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 1, buyer_name: "Buyer Name 2", buyer_mail: "Buyer Mail 2", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 1, buyer_name: "Buyer Name 3", buyer_mail: "Buyer Mail 3", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 2, buyer_name: "Buyer Name 4", buyer_mail: "Buyer Mail 4", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 3, buyer_name: "Buyer Name 5", buyer_mail: "Buyer Mail 5", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 3, buyer_name: "Buyer Name 6", buyer_mail: "Buyer Mail 6", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 4, buyer_name: "Buyer Name 7", buyer_mail: "Buyer Mail 7", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 4, buyer_name: "Buyer Name 8", buyer_mail: "Buyer Mail 8", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 4, buyer_name: "Buyer Name 9", buyer_mail: "Buyer Mail 9", confirmation_code: Random.rand(100000..999999).to_s)
Ticket.create(event_id: 5, buyer_name: "Buyer Name 10", buyer_mail: "Buyer Mail 10", confirmation_code: Random.rand(100000..999999).to_s)