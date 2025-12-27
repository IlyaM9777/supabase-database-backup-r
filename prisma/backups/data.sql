SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict c87yTFHz9up9Ss4yyqqvXr8Ht2TfChwWXax2iZt7o0w3Pxied3btickliv3LzGC

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: cabins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."cabins" ("id", "created_at", "name", "maxCapacity", "regularPrice", "discount", "description", "image") FROM stdin;
1	2025-12-20 15:22:54.266186+00	001	2	250	50	Small luxury cabin in the woods.	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/cabin-001.jpg
37	2025-12-26 14:52:20.580071+00	002	5	700	0	777	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/0.29019639175003187-cabin-002.jpg
38	2025-12-26 14:53:11.339087+00	003	10	200	0	777	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/0.7753337526251579-cabin-003.jpg
39	2025-12-26 15:11:23.373285+00	004	10	500	0	777	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/0.4603935280871514-cabin-004.jpg
40	2025-12-26 15:13:32.594298+00	005	12	73	5	yyy	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/0.6024991047253926-cabin-005.jpg
\.


--
-- Data for Name: guests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."guests" ("id", "created_at", "fullName", "email", "nationalID", "nationality", "countryFlag") FROM stdin;
1	2025-12-20 15:29:52.079214+00	Ilya Meerov	test@email.com	fsdfsadfsad	Russian	\N
2	2025-12-26 15:51:14.586479+00	Steven Williams	test@test.com	sdfsdfdsa	portugal	\N
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."bookings" ("id", "created_at", "startDate", "endDate", "numNights", "numGuests", "cabinPrice", "extrasPrice", "totalPrice", "status", "hasBreakfast", "isPaid", "observations", "cabinId", "guestId") FROM stdin;
1	2025-12-20 16:47:33.959528+00	2025-12-22 19:43:24	2025-12-26 19:43:40	4	2	300	120	420	unconfirmed	t	t	I will arrive at 10 pm.	1	1
2	2025-12-26 15:54:20.971635+00	2025-12-29 18:51:46	2026-01-10 18:52:03	2	4	500	100	600	checked-in	t	t	\N	38	2
\.


--
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."menu" ("id", "name", "unitPrice", "imageUrl", "soldOut", "ingredients") FROM stdin;
1	Margherita	12	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-1.jpg	f	["tomato", "mozzarella", "basil"]
3	Romana	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-3.jpg	f	["tomato", "mozzarella", "prosciutto"]
4	Prosciutto e Rucola	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-4.jpg	f	["tomato", "mozzarella", "prosciutto", "arugula"]
6	Vegetale	13	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-6.jpg	f	["tomato", "mozzarella", "bell peppers", "onions", "mushrooms"]
7	Napoli	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-7.jpg	f	["tomato", "mozzarella", "fresh tomato", "basil"]
9	Pepperoni	14	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-9.jpg	f	["tomato", "mozzarella", "pepperoni"]
10	Hawaiian	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-10.jpg	f	["tomato", "mozzarella", "pineapple", "ham"]
11	Spinach and Mushroom	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-11.jpg	f	["tomato", "mozzarella", "spinach", "mushrooms"]
12	Mediterranean	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-12.jpg	f	["tomato", "mozzarella", "sun-dried tomatoes", "olives", "artichoke"]
14	Abruzzese	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-14.jpg	f	["tomato", "mozzarella", "prosciutto", "arugula"]
15	Pesto Chicken	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-15.jpg	f	["pesto", "mozzarella", "chicken", "sun-dried tomatoes", "spinach"]
16	Eggplant Parmesan	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-16.jpg	f	["marinara", "mozzarella", "eggplant", "parmesan"]
17	Roasted Veggie	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-17.jpg	f	["marinara", "mozzarella", "zucchini", "eggplant", "peppers", "onions"]
18	Tofu and Mushroom	15	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-18.jpg	f	["marinara", "mozzarella", "tofu", "mushrooms", "bell peppers"]
5	Diavola	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-5.jpg	t	["tomato", "mozzarella", "spicy salami", "chili flakes"]
2	Capricciosa	14	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-2.jpg	f	["tomato", "mozzarella", "ham", "mushrooms", "artichoke"]
8	Siciliana	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-8.jpg	f	["tomato", "mozzarella", "anchovies", "olives", "capers"]
13	Greek	16	https://sspsbllbwsxkhzljwccx.supabase.co/storage/v1/object/public/cabin-images/pizza-13.jpg	f	["tomato", "mozzarella", "spinach", "feta", "olives", "pepperoncini"]
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."orders" ("id", "createdAt", "customer", "phone", "position", "address", "status", "cart") FROM stdin;
\.


--
-- Data for Name: ordersPizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ordersPizza" ("shortId", "createdAt", "customer", "phone", "position", "address", "status", "cart", "estimatedDelivery", "priority", "id") FROM stdin;
72	2025-12-25 06:13:45.103612+00	ilya	45125555	60.0218644,30.3742359	Akademicheskoe, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Prosciutto e Rucola", "pizzaId": 4, "quantity": 7, "unitPrice": 16, "totalPrice": 112}, {"name": "Romana", "pizzaId": 3, "quantity": 7, "unitPrice": 15, "totalPrice": 105}, {"name": "Margherita", "pizzaId": 1, "quantity": 7, "unitPrice": 12, "totalPrice": 84}]	2025-12-25 07:13:45.103612+00	t	jwMheGu
73	2025-12-25 06:14:34.848127+00	ilya	77777527	60.0218644,30.3742359	Akademicheskoe, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Tofu and Mushroom", "pizzaId": 18, "quantity": 7, "unitPrice": 15, "totalPrice": 105}, {"name": "Roasted Veggie", "pizzaId": 17, "quantity": 7, "unitPrice": 15, "totalPrice": 105}, {"name": "Eggplant Parmesan", "pizzaId": 16, "quantity": 7, "unitPrice": 15, "totalPrice": 105}]	2025-12-25 07:14:34.848127+00	t	53rJnDa
74	2025-12-25 06:15:12.548344+00	ilya	77777527	60.0218644,30.3742359	Akademicheskoe, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Mediterranean", "pizzaId": 12, "quantity": 7, "unitPrice": 16, "totalPrice": 112}, {"name": "Spinach and Mushroom", "pizzaId": 11, "quantity": 7, "unitPrice": 15, "totalPrice": 105}, {"name": "Hawaiian", "pizzaId": 10, "quantity": 7, "unitPrice": 15, "totalPrice": 105}]	2025-12-25 07:15:12.548344+00	t	xdXDU4K
75	2025-12-25 06:16:25.751383+00	kate	77777527	59.9359488,30.3169536	Municipal Okrug 78, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Romana", "pizzaId": 3, "quantity": 7, "unitPrice": 15, "totalPrice": 105}]	2025-12-25 07:16:25.751383+00	t	tjMNET3
76	2025-12-25 06:21:53.848988+00	victory	+79112464997		Светлановский пр. 34 кв.77	preparing	[{"name": "Romana", "pizzaId": 3, "quantity": 7, "unitPrice": 15, "totalPrice": 105}, {"name": "Margherita", "pizzaId": 1, "quantity": 7, "unitPrice": 12, "totalPrice": 84}, {"name": "Prosciutto e Rucola", "pizzaId": 4, "quantity": 7, "unitPrice": 16, "totalPrice": 112}]	2025-12-25 07:21:53.848988+00	t	B64xWfa
77	2025-12-25 08:10:13.639502+00	ilya	77777527	59.9359488,30.3169536	Municipal Okrug 78, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Greek", "pizzaId": 13, "quantity": 7, "unitPrice": 16, "totalPrice": 112}, {"name": "Siciliana", "pizzaId": 8, "quantity": 7, "unitPrice": 16, "totalPrice": 112}]	2025-12-25 09:10:13.639502+00	t	MVWUYCE
78	2025-12-25 08:14:20.252295+00	geen	77777527	59.9359488,30.3169536	Municipal Okrug 78, Saint Petersburg , Russian Federation (the)	preparing	[{"name": "Pepperoni", "pizzaId": 9, "quantity": 7, "unitPrice": 14, "totalPrice": 98}]	2025-12-25 09:14:20.252295+00	t	3BF7PNm
79	2025-12-25 09:59:15.392698+00	freedom	+79112464997		Светлановский пр. 34 кв.77	preparing	[{"name": "Vegetale", "pizzaId": 6, "quantity": 7, "unitPrice": 13, "totalPrice": 91}]	2025-12-25 10:59:15.392698+00	t	0ZtbJHy
80	2025-12-25 10:00:17.690328+00	freedom	+79112464997		Светлановский пр. 34 кв.77	preparing	[{"name": "Roasted Veggie", "pizzaId": 17, "quantity": 7, "unitPrice": 15, "totalPrice": 105}]	2025-12-25 11:00:17.690328+00	t	4NAw7ne
81	2025-12-25 10:01:57.607036+00	freedom	+79112464997		Светлановский пр. 34 кв.77	preparing	[{"name": "Hawaiian", "pizzaId": 10, "quantity": 7, "unitPrice": 15, "totalPrice": 105}]	2025-12-25 11:01:57.607036+00	t	TJeSNVV
82	2025-12-25 11:26:16.062675+00	juletta	+79112464997		Светлановский пр. 34 кв.77	preparing	[{"name": "Napoli", "pizzaId": 7, "quantity": 7, "unitPrice": 16, "totalPrice": 112}]	2025-12-25 12:26:16.062675+00	f	K5XZNYw
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("id", "created_at", "minBookingLength", "maxBookingLength", "maxGuestsPerBooking", "breakfastPrice") FROM stdin;
1	2025-12-20 15:35:22.927346+00	5	95	7	17
\.


--
-- Data for Name: worldwise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."worldwise" ("id", "date", "position", "cityName", "country", "emoji", "notes") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
avatars	avatars	\N	2025-12-21 14:00:44.944849+00	2025-12-21 14:00:44.944849+00	t	f	\N	\N	\N	STANDARD
cabin-images	cabin-images	\N	2025-12-21 14:01:40.041418+00	2025-12-21 14:01:40.041418+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
034c42cf-a97e-495c-bb79-5d9522cd2132	cabin-images	0.622372867408271-cabin-007.jpg	\N	2025-12-25 12:26:17.54716+00	2025-12-25 12:26:17.54716+00	2025-12-25 12:26:17.54716+00	{"eTag": "\\"7a2f383aa7f5f2a2ebc6d5310ab2ff6a\\"", "size": 231604, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-25T12:26:18.000Z", "contentLength": 231604, "httpStatusCode": 200}	7118bca9-b6c4-4e85-b552-eac2c3b2cba7	\N	{}	1
a450d55c-02f6-490f-85cb-3c8466d36a6d	cabin-images	cabin-007.jpg	\N	2025-12-21 14:03:15.717695+00	2025-12-21 14:03:15.717695+00	2025-12-21 14:03:15.717695+00	{"eTag": "\\"18377cc1afd74a13dd267c495093216d-1\\"", "size": 231604, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 231604, "httpStatusCode": 200}	9d5d76c1-4a57-42a5-bcc3-559042f68994	\N	\N	1
12f33dbd-77c3-422f-a456-6b2447519db7	cabin-images	cabin-005.jpg	\N	2025-12-21 14:03:15.762193+00	2025-12-21 14:03:15.762193+00	2025-12-21 14:03:15.762193+00	{"eTag": "\\"671afbb6c6bab3546973f776f6732de3-1\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 298446, "httpStatusCode": 200}	f5832725-094b-46f9-9f19-607d48b551ff	\N	\N	1
f7f76a63-0b83-4cc2-8254-d900de209f23	cabin-images	cabin-006.jpg	\N	2025-12-21 14:03:15.761736+00	2025-12-21 14:03:15.761736+00	2025-12-21 14:03:15.761736+00	{"eTag": "\\"cf79d9caf48c24639ca629a06271f760-1\\"", "size": 262253, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 262253, "httpStatusCode": 200}	47bafd94-1cc0-4de7-9d9b-38f17a5cbaea	\N	\N	1
bd91dee0-0200-4665-8a01-d467017ecc11	cabin-images	cabin-001.jpg	\N	2025-12-21 14:03:15.765627+00	2025-12-21 14:03:15.765627+00	2025-12-21 14:03:15.765627+00	{"eTag": "\\"45afb2ebfe28f136a081cca47924dd54-1\\"", "size": 261067, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 261067, "httpStatusCode": 200}	70457525-2877-445f-8ac7-6c82510cdb45	\N	\N	1
fb43f42e-d2f6-4e70-abc4-b59a43fe5208	cabin-images	cabin-002.jpg	\N	2025-12-21 14:03:15.767413+00	2025-12-21 14:03:15.767413+00	2025-12-21 14:03:15.767413+00	{"eTag": "\\"9da847f783d7018791464aa4befd1cc5-1\\"", "size": 211817, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 211817, "httpStatusCode": 200}	7e62e40b-79b1-4c40-ac6b-561e3158a129	\N	\N	1
10e6e5d7-3dd9-43d0-b8d3-c3bb1b7e5218	cabin-images	cabin-003.jpg	\N	2025-12-21 14:03:15.776315+00	2025-12-21 14:03:15.776315+00	2025-12-21 14:03:15.776315+00	{"eTag": "\\"4b2b22bdcd724936b9a6dc09fe5e0fe6-1\\"", "size": 254300, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 254300, "httpStatusCode": 200}	3fc4e8c2-28e0-454c-8798-4498f022bf05	\N	\N	1
c8e91b39-8860-4c2f-b9ee-d6c084b42634	cabin-images	cabin-008.jpg	\N	2025-12-21 14:03:15.776999+00	2025-12-21 14:03:15.776999+00	2025-12-21 14:03:15.776999+00	{"eTag": "\\"9ab32ab61d756f5bce580da74e66b202-1\\"", "size": 252747, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 252747, "httpStatusCode": 200}	c5647723-8cd2-4ed3-a020-3280e423c5ba	\N	\N	1
74153a8f-cff4-4e77-9096-d13dcf56afbd	cabin-images	cabin-004.jpg	\N	2025-12-21 14:03:15.785419+00	2025-12-21 14:03:15.785419+00	2025-12-21 14:03:15.785419+00	{"eTag": "\\"d5f99c5227847b5561807cd24afd4a16-1\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-21T14:03:16.000Z", "contentLength": 250312, "httpStatusCode": 200}	61fe8114-ddeb-419c-9e53-f1c998dc46c0	\N	\N	1
9a133eda-8bca-452d-b8ed-03dad322ae29	cabin-images	0.053459349249197596-cabin-003.jpg	\N	2025-12-22 15:21:02.179488+00	2025-12-22 15:21:02.179488+00	2025-12-22 15:21:02.179488+00	{"eTag": "\\"b31d3641a0223d5a698787d6ef1611e0\\"", "size": 254300, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-22T15:21:03.000Z", "contentLength": 254300, "httpStatusCode": 200}	bd9b7286-165d-45ff-9f0d-68a5081a2e3f	\N	{}	1
74158128-28c7-4ab2-aa75-8f5130ee4da9	cabin-images	0.08288523235858003-cabin-004.jpg	\N	2025-12-22 15:22:17.381904+00	2025-12-22 15:22:17.381904+00	2025-12-22 15:22:17.381904+00	{"eTag": "\\"c43b8e6bd7abc5412fbd5eafc9985dc0\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-22T15:22:18.000Z", "contentLength": 250312, "httpStatusCode": 200}	73b706e6-a17b-4145-9f80-19c737a8f6d0	\N	{}	1
b4b46183-92e2-4d17-acfe-803391250af6	cabin-images	0.23779136226468822-cabin-001.jpg	\N	2025-12-22 18:25:24.595849+00	2025-12-22 18:25:24.595849+00	2025-12-22 18:25:24.595849+00	{"eTag": "\\"70bc8192eddc7bc8aaa156219831fa10\\"", "size": 261067, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-22T18:25:25.000Z", "contentLength": 261067, "httpStatusCode": 200}	6518852f-a0c4-47bb-be3c-35f3ac275017	\N	{}	1
945a06be-8684-4c3a-a67f-a276fd2fec55	cabin-images	0.7119813972960366-cabin-007.jpg	\N	2025-12-22 18:31:31.87102+00	2025-12-22 18:31:31.87102+00	2025-12-22 18:31:31.87102+00	{"eTag": "\\"7a2f383aa7f5f2a2ebc6d5310ab2ff6a\\"", "size": 231604, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-22T18:31:32.000Z", "contentLength": 231604, "httpStatusCode": 200}	95fd5189-3c2c-42ea-8e98-30abcda1115c	\N	{}	1
e0de13f2-f958-4d1d-92c3-0e7c2097f30e	cabin-images	0.5597984663451813-cabin-004.jpg	\N	2025-12-23 06:06:42.159444+00	2025-12-23 06:06:42.159444+00	2025-12-23 06:06:42.159444+00	{"eTag": "\\"c43b8e6bd7abc5412fbd5eafc9985dc0\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:06:43.000Z", "contentLength": 250312, "httpStatusCode": 200}	b3af7ea8-79bb-4e22-9d74-5f16e9b1f132	\N	{}	1
937c7747-baf8-4569-a13f-ded22b69000f	cabin-images	0.33331277098696954-cabin-002.jpg	\N	2025-12-23 06:49:18.958175+00	2025-12-23 06:49:18.958175+00	2025-12-23 06:49:18.958175+00	{"eTag": "\\"066647c2de6f1de34d0253f8fcd26ed8\\"", "size": 211817, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:49:19.000Z", "contentLength": 211817, "httpStatusCode": 200}	bf22eb07-a411-40db-97b3-a9eccf140c66	\N	{}	1
8e982e98-5932-43bc-a95f-0c45d0e899e7	cabin-images	0.390331099504431-cabin-003.jpg	\N	2025-12-23 06:49:41.342238+00	2025-12-23 06:49:41.342238+00	2025-12-23 06:49:41.342238+00	{"eTag": "\\"b31d3641a0223d5a698787d6ef1611e0\\"", "size": 254300, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:49:42.000Z", "contentLength": 254300, "httpStatusCode": 200}	8bd67bdd-bdd9-4f11-9e25-a2feaf9d6585	\N	{}	1
3fce6bdf-27a2-485d-b07f-bd51c06ac425	cabin-images	0.0031421752134008774-cabin-004.jpg	\N	2025-12-23 06:52:45.939155+00	2025-12-23 06:52:45.939155+00	2025-12-23 06:52:45.939155+00	{"eTag": "\\"c43b8e6bd7abc5412fbd5eafc9985dc0\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:52:46.000Z", "contentLength": 250312, "httpStatusCode": 200}	ffc8c4ff-e1ed-471c-b975-87f5eda8691c	\N	{}	1
5aab63e7-9cdf-489b-8a63-c0f5004a462b	cabin-images	0.8274113780689488-cabin-005.jpg	\N	2025-12-23 06:54:10.401628+00	2025-12-23 06:54:10.401628+00	2025-12-23 06:54:10.401628+00	{"eTag": "\\"f0708351f7c8e59dae5e3517a36e7e16\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:54:11.000Z", "contentLength": 298446, "httpStatusCode": 200}	73f5e80c-ac15-496a-b7c9-7412dbdb4b55	\N	{}	1
682c172e-0df5-4f82-a716-e262a0353bfd	cabin-images	0.045330928123713976-cabin-006.jpg	\N	2025-12-25 15:12:09.885307+00	2025-12-25 15:12:09.885307+00	2025-12-25 15:12:09.885307+00	{"eTag": "\\"8d1f4e869fb13c640ed1d20cf9c95a9c\\"", "size": 262253, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-25T15:12:10.000Z", "contentLength": 262253, "httpStatusCode": 200}	731add84-5a14-4d60-8896-3ae2526daa4c	\N	{}	1
dee805d0-cc37-4cc9-9bcb-77702750d478	cabin-images	0.3277346644453196-cabin-008.jpg	\N	2025-12-23 06:54:52.280164+00	2025-12-23 06:54:52.280164+00	2025-12-23 06:54:52.280164+00	{"eTag": "\\"c4c9d33aabf06bdd7cb18fbef5837a7f\\"", "size": 252747, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:54:53.000Z", "contentLength": 252747, "httpStatusCode": 200}	72f5d5de-cd33-46a7-8b53-e8432b6ba82f	\N	{}	1
05cfbf2f-49dd-4b85-b21a-a7f838bfd3f0	cabin-images	0.9442836886411703-cabin-001.jpg	\N	2025-12-23 06:55:44.01118+00	2025-12-23 06:55:44.01118+00	2025-12-23 06:55:44.01118+00	{"eTag": "\\"70bc8192eddc7bc8aaa156219831fa10\\"", "size": 261067, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T06:55:44.000Z", "contentLength": 261067, "httpStatusCode": 200}	8728c90d-3823-46da-bc0c-3db3eeff4c3f	\N	{}	1
b249f206-6858-4ad2-9deb-3c477a2db7f4	cabin-images	0.7786969860511687-cabin-004.jpg	\N	2025-12-23 07:09:22.760068+00	2025-12-23 07:09:22.760068+00	2025-12-23 07:09:22.760068+00	{"eTag": "\\"c43b8e6bd7abc5412fbd5eafc9985dc0\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T07:09:23.000Z", "contentLength": 250312, "httpStatusCode": 200}	54f586c7-28c4-4713-805d-2d51b66a23fd	\N	{}	1
655ad6ea-8d44-4c6e-9512-a4ecd1428755	cabin-images	0.5429037918205738-cabin-005.jpg	\N	2025-12-23 07:16:59.04997+00	2025-12-23 07:16:59.04997+00	2025-12-23 07:16:59.04997+00	{"eTag": "\\"f0708351f7c8e59dae5e3517a36e7e16\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T07:16:59.000Z", "contentLength": 298446, "httpStatusCode": 200}	1ccd187d-6000-447f-bf51-354658eed89f	\N	{}	1
72849e5c-d10b-4814-8c98-64a758e9fddf	cabin-images	0.3051190227676589-cabin-005.jpg	\N	2025-12-26 12:08:41.536353+00	2025-12-26 12:08:41.536353+00	2025-12-26 12:08:41.536353+00	{"eTag": "\\"f0708351f7c8e59dae5e3517a36e7e16\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T12:08:42.000Z", "contentLength": 298446, "httpStatusCode": 200}	b09363b4-f4c9-47c1-87d8-9c5e2b51b8a2	\N	{}	1
5bd9290e-6724-4558-8946-e88a30429d90	cabin-images	pizza-12.jpg	\N	2025-12-23 12:01:58.421391+00	2025-12-23 12:01:58.421391+00	2025-12-23 12:01:58.421391+00	{"eTag": "\\"d83386c703b490c639b3d360f8d77d0c-1\\"", "size": 15660, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 15660, "httpStatusCode": 200}	49bc06c2-08a7-4442-bb1e-d4608e241e1e	\N	\N	1
54a83d67-bcf7-4970-9dc3-22c672d9b796	cabin-images	pizza-5.jpg	\N	2025-12-23 12:01:59.131235+00	2025-12-23 12:01:59.131235+00	2025-12-23 12:01:59.131235+00	{"eTag": "\\"a85f789d9e69d8a1b8abc24bbf07059f-1\\"", "size": 14107, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 14107, "httpStatusCode": 200}	8448f509-314a-4bd8-87ad-2c08a909019b	\N	\N	1
a3084fd3-92ed-49a9-9707-9490d59ffc6a	cabin-images	0.5976029331364052-cabin-005.jpg	\N	2025-12-26 13:00:20.148394+00	2025-12-26 13:00:20.148394+00	2025-12-26 13:00:20.148394+00	{"eTag": "\\"f0708351f7c8e59dae5e3517a36e7e16\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T13:00:21.000Z", "contentLength": 298446, "httpStatusCode": 200}	b0e7779f-ae98-404f-b4b8-5f54476fd4d7	\N	{}	1
61b50c51-ee1c-4113-82b6-23add5990110	cabin-images	pizza-16.jpg	\N	2025-12-23 12:01:58.297272+00	2025-12-23 12:01:58.297272+00	2025-12-23 12:01:58.297272+00	{"eTag": "\\"010585837ec56018c6918392286832cc-1\\"", "size": 13996, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 13996, "httpStatusCode": 200}	61ca1aa0-0cb8-4135-afac-0408761c09c9	\N	\N	1
4762522f-3aa7-4b1d-ab71-91bc6c872448	cabin-images	pizza-8.jpg	\N	2025-12-23 12:01:59.095028+00	2025-12-23 12:01:59.095028+00	2025-12-23 12:01:59.095028+00	{"eTag": "\\"fa0c4c01ce5af0414d1f49ce4cac2b75-1\\"", "size": 12193, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 12193, "httpStatusCode": 200}	df1b0d97-6f23-4c9f-833e-aa7fd8506307	\N	\N	1
ba9fb163-15b0-4101-9cf3-d4f32fa05d2e	cabin-images	0.29019639175003187-cabin-002.jpg	\N	2025-12-26 14:52:21.542446+00	2025-12-26 14:52:21.542446+00	2025-12-26 14:52:21.542446+00	{"eTag": "\\"066647c2de6f1de34d0253f8fcd26ed8\\"", "size": 211817, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T14:52:22.000Z", "contentLength": 211817, "httpStatusCode": 200}	cc6f2ba8-0b15-4363-a9c3-c04a1a37d4ec	\N	{}	1
2760db86-9a7e-4650-8c27-dbb4ca629259	cabin-images	0.7753337526251579-cabin-003.jpg	\N	2025-12-26 14:53:12.108741+00	2025-12-26 14:53:12.108741+00	2025-12-26 14:53:12.108741+00	{"eTag": "\\"b31d3641a0223d5a698787d6ef1611e0\\"", "size": 254300, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T14:53:13.000Z", "contentLength": 254300, "httpStatusCode": 200}	b3e31d68-5928-4b82-a4f4-4a98a5412648	\N	{}	1
15b545c0-6bca-418a-93aa-5d262675a280	cabin-images	0.4603935280871514-cabin-004.jpg	\N	2025-12-26 15:11:24.427732+00	2025-12-26 15:11:24.427732+00	2025-12-26 15:11:24.427732+00	{"eTag": "\\"c43b8e6bd7abc5412fbd5eafc9985dc0\\"", "size": 250312, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T15:11:25.000Z", "contentLength": 250312, "httpStatusCode": 200}	7cbfd220-a4f8-4e55-b306-10609495eff8	\N	{}	1
885668f7-4234-44b6-b380-9a1d5728422e	cabin-images	pizza-9.jpg	\N	2025-12-23 12:01:58.171612+00	2025-12-23 12:01:58.171612+00	2025-12-23 12:01:58.171612+00	{"eTag": "\\"1b69ef1d7cec0e809fc64285e331124e-1\\"", "size": 15989, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 15989, "httpStatusCode": 200}	8e7cb031-b129-4fe8-91d9-09239f0ab8d7	\N	\N	1
ce68191c-4363-4bdb-b45b-8e4c6ee72448	cabin-images	pizza-13.jpg	\N	2025-12-23 12:01:58.19019+00	2025-12-23 12:01:58.19019+00	2025-12-23 12:01:58.19019+00	{"eTag": "\\"45797bc8f4f1154ada58f0a5617f55bc-1\\"", "size": 10456, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 10456, "httpStatusCode": 200}	04e4ae62-c8fc-4f48-89cc-74e70ee402a9	\N	\N	1
93490079-e401-451b-a278-2305cbfdbf00	cabin-images	pizza-17.jpg	\N	2025-12-23 12:01:58.211039+00	2025-12-23 12:01:58.211039+00	2025-12-23 12:01:58.211039+00	{"eTag": "\\"a4e7396877b0615684084d20774fd058-1\\"", "size": 17570, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 17570, "httpStatusCode": 200}	e7c0e5e6-88b4-4897-afc4-529c4c14bce3	\N	\N	1
c20fcce5-b135-4e39-afc1-0040be359a67	cabin-images	pizza-11.jpg	\N	2025-12-23 12:01:58.245347+00	2025-12-23 12:01:58.245347+00	2025-12-23 12:01:58.245347+00	{"eTag": "\\"d1d6ea4110b8a9316e7bfe0269a4bfc1-1\\"", "size": 15119, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 15119, "httpStatusCode": 200}	1995f169-5619-4c88-af37-ebf7b9074fea	\N	\N	1
d81fb981-4c5f-4b58-961c-ac27a85f388e	cabin-images	pizza-6.jpg	\N	2025-12-23 12:01:59.181196+00	2025-12-23 12:01:59.181196+00	2025-12-23 12:01:59.181196+00	{"eTag": "\\"181604d10326474c0c86904198624812-1\\"", "size": 15540, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 15540, "httpStatusCode": 200}	ecb470e7-3fef-4f68-bb03-b6ea35db66b8	\N	\N	1
23931af9-4a6b-4e69-8797-88e427f24015	cabin-images	0.6024991047253926-cabin-005.jpg	\N	2025-12-26 15:13:33.60438+00	2025-12-26 15:13:33.60438+00	2025-12-26 15:13:33.60438+00	{"eTag": "\\"f0708351f7c8e59dae5e3517a36e7e16\\"", "size": 298446, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-26T15:13:34.000Z", "contentLength": 298446, "httpStatusCode": 200}	c9458bb4-6244-4657-9c5d-47eab66872f9	\N	{}	1
a45a82bc-e25d-4543-b25e-0bb18fa50ab4	cabin-images	pizza-14.jpg	\N	2025-12-23 12:01:58.416319+00	2025-12-23 12:01:58.416319+00	2025-12-23 12:01:58.416319+00	{"eTag": "\\"467bbccab612e3601eb6dbdbbbc73bdf-1\\"", "size": 9692, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 9692, "httpStatusCode": 200}	1e490909-6b48-41f6-a73c-96fdded87753	\N	\N	1
e97641bf-d08a-4059-90cf-daead0e97f63	cabin-images	pizza-7.jpg	\N	2025-12-23 12:01:59.275612+00	2025-12-23 12:01:59.275612+00	2025-12-23 12:01:59.275612+00	{"eTag": "\\"dcfa0a5b677f14a8d3901fb91cdc5713-1\\"", "size": 13417, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 13417, "httpStatusCode": 200}	58ff4a8b-14fa-41b2-bce9-85fbba6a2e33	\N	\N	1
438c7973-a3af-4ad0-8261-f3db1a431d60	cabin-images	pizza-10.jpg	\N	2025-12-23 12:01:58.201268+00	2025-12-23 12:01:58.201268+00	2025-12-23 12:01:58.201268+00	{"eTag": "\\"3169e9e4bd51d773cdc30d088002c1e3-1\\"", "size": 14368, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 14368, "httpStatusCode": 200}	3362d519-5793-4c6f-ac4a-d4f124cd1bf7	\N	\N	1
162e4a3e-11ea-42dc-b1a8-0dd22024fa8d	cabin-images	pizza-3.jpg	\N	2025-12-23 12:01:59.166007+00	2025-12-23 12:01:59.166007+00	2025-12-23 12:01:59.166007+00	{"eTag": "\\"e3ff1c04745315ada32c41f0a410a6c1-1\\"", "size": 13171, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 13171, "httpStatusCode": 200}	90b1b1b2-a0db-43ff-b8d5-b37c2c22ce06	\N	\N	1
56486a63-dd14-44b5-bda7-e8bbba232036	cabin-images	pizza-1.jpg	\N	2025-12-23 12:01:59.176905+00	2025-12-23 12:01:59.176905+00	2025-12-23 12:01:59.176905+00	{"eTag": "\\"59c65371f71478019b93a42a1fc1d243-1\\"", "size": 16357, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 16357, "httpStatusCode": 200}	0ecb3ae3-9bc0-4bb0-a932-9ae3d480140d	\N	\N	1
a6ef8a32-9b9b-4071-9383-a9cccf9bf9ec	cabin-images	pizza-15.jpg	\N	2025-12-23 12:01:58.241451+00	2025-12-23 12:01:58.241451+00	2025-12-23 12:01:58.241451+00	{"eTag": "\\"5879a93cfefab74334f4fc125b4b3a2e-1\\"", "size": 15269, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 15269, "httpStatusCode": 200}	637c618b-73a4-4edd-98ea-c7fc94c36565	\N	\N	1
574ade4f-79b0-48c2-8b8e-c36b4b73994c	cabin-images	pizza-18.jpg	\N	2025-12-23 12:01:58.427586+00	2025-12-23 12:01:58.427586+00	2025-12-23 12:01:58.427586+00	{"eTag": "\\"f018def80ea9a4700f1b19a8a05babbb-1\\"", "size": 15607, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:58.000Z", "contentLength": 15607, "httpStatusCode": 200}	719f3c3f-064e-4f57-8189-4dcf23c0c98c	\N	\N	1
bbb7cb4c-657d-467d-8c2b-0c65b3d46c33	cabin-images	pizza-2.jpg	\N	2025-12-23 12:01:59.279959+00	2025-12-23 12:01:59.279959+00	2025-12-23 12:01:59.279959+00	{"eTag": "\\"e3a376c3e52a2fa9298619c6347396c4-1\\"", "size": 14673, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 14673, "httpStatusCode": 200}	7c691398-9923-4597-b56c-a744eea1c8e2	\N	\N	1
913fa6be-798f-4d3c-a20d-8bb5ba072e4f	cabin-images	pizza-4.jpg	\N	2025-12-23 12:01:59.170347+00	2025-12-23 12:01:59.170347+00	2025-12-23 12:01:59.170347+00	{"eTag": "\\"c20f0e1a6ddbc65a87af287593831087-1\\"", "size": 13253, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-12-23T12:01:59.000Z", "contentLength": 13253, "httpStatusCode": 200}	9044eb13-1935-4480-9f19-76cc16ecdce2	\N	\N	1
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."bookings_id_seq"', 2, true);


--
-- Name: cabins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."cabins_id_seq"', 40, true);


--
-- Name: guests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."guests_id_seq"', 2, true);


--
-- Name: orders-pizza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."orders-pizza_id_seq"', 82, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."orders_id_seq"', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."settings_id_seq"', 1, true);


--
-- Name: worldwise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."worldwise_id_seq"', 82, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict c87yTFHz9up9Ss4yyqqvXr8Ht2TfChwWXax2iZt7o0w3Pxied3btickliv3LzGC

RESET ALL;
