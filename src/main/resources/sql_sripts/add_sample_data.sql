INSERT INTO C##MACIEK.ADRESY (ID_ADRESU, MIASTO, ULICA, NR_BUDYNKU, KOD_POCZTOWY) VALUES ('76e3d25f-2705-4fbb-97cc-8b78613e80b6', 'Warszawa', 'Marszalkowska', '20', '02-536');
INSERT INTO C##MACIEK.ADRESY (ID_ADRESU, MIASTO, ULICA, NR_BUDYNKU, KOD_POCZTOWY) VALUES ('fd420c4e-1086-4a47-8ab3-34bfc1d4a221', 'Warszawa', 'Pulawska', '30', '02-358');
INSERT INTO C##MACIEK.ADRESY (ID_ADRESU, MIASTO, ULICA, NR_BUDYNKU, KOD_POCZTOWY) VALUES ('2a6e402e-4178-4026-bda9-7695f65882cb', 'Krakow', 'Niedzielna', '10', '07-356');
INSERT INTO C##MACIEK.ADRESY (ID_ADRESU, MIASTO, ULICA, NR_BUDYNKU, KOD_POCZTOWY) VALUES ('bbf3bae2-fe9b-4737-94df-3eb5cdb3f221', 'Warszawa', 'Wilcza', '10', '01-368');

INSERT INTO C##MACIEK.SPOLDZIELNIE (ID_SPOLDZIELNI, NAZWA, DATA_ZALOZENIA, NIP, ID_ADRESU)
VALUES ('04678797-6435-45d1-a748-770b33a1917b', 'nazwa', TIMESTAMP '2019-12-23 18:31:17', '1234567890',
        '76e3d25f-2705-4fbb-97cc-8b78613e80b6');

INSERT INTO C##MACIEK.SPOLDZIELNIE (ID_SPOLDZIELNI, NAZWA, DATA_ZALOZENIA, NIP, ID_ADRESU)
VALUES ('75ca0f58-4e24-4b01-9670-7f37e1932b86', 'spoldzielnia2', TIMESTAMP '2017-12-15 18:32:09', '1234564890',
        '2a6e402e-4178-4026-bda9-7695f65882cb');

INSERT INTO C##MACIEK.PRACOWNICY (ID_PRACOWNIKA, IMIE, NAZWISKO, NR_TELEFONU, DATA_ZATRUDNIENIA, DATA_KONCA_UMOWY, PLEC,
                                  PLACA, EMAIL, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('0855ac52-d9c8-4ec5-b179-8e0243518737', 'maciek', 'krajewski', '748927598', TIMESTAMP '2022-12-23 18:34:08',
        TIMESTAMP '2025-12-23 18:34:13', 'M', 300.00, 'mkrajewski@gmail.com', '04678797-6435-45d1-a748-770b33a1917b',
        '76e3d25f-2705-4fbb-97cc-8b78613e80b6');

INSERT INTO C##MACIEK.PRACOWNICY (ID_PRACOWNIKA, IMIE, NAZWISKO, NR_TELEFONU, DATA_ZATRUDNIENIA, DATA_KONCA_UMOWY, PLEC,
                                  PLACA, EMAIL, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('8f381c84-6cc0-449f-a68c-32cba20d0772', 'wiktor', 'fratczak', '578265878', TIMESTAMP '2023-06-23 18:35:23',
        TIMESTAMP '2025-06-23 18:34:55', 'M', 200.00, 'wfratczak@gmail.com', '04678797-6435-45d1-a748-770b33a1917b',
        '76e3d25f-2705-4fbb-97cc-8b78613e80b6');

INSERT INTO C##MACIEK.PRACOWNICY (ID_PRACOWNIKA, IMIE, NAZWISKO, NR_TELEFONU, DATA_ZATRUDNIENIA, DATA_KONCA_UMOWY, PLEC,
                                  PLACA, EMAIL, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('55665c51-c774-4700-bea8-f28f7a3a9581', 'michal', 'sokala', '478187588', TIMESTAMP '2021-08-23 18:35:58',
        TIMESTAMP '2024-06-23 18:36:05', 'M', 200.00, 'msokala@gmail.com', '75ca0f58-4e24-4b01-9670-7f37e1932b86',
        '2a6e402e-4178-4026-bda9-7695f65882cb');

INSERT INTO C##MACIEK.PRACOWNICY (ID_PRACOWNIKA, IMIE, NAZWISKO, NR_TELEFONU, DATA_ZATRUDNIENIA, DATA_KONCA_UMOWY, PLEC,
                                  PLACA, EMAIL, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('dead6ea7-1d08-4671-a9f9-6f04237541e0', 'artur', 'korotkov', '5y7827859', TIMESTAMP '2021-12-23 18:37:18',
        TIMESTAMP '2025-12-23 18:37:22', 'M', 200.00, 'akorotkov@gmail.com', '75ca0f58-4e24-4b01-9670-7f37e1932b86',
        'fd420c4e-1086-4a47-8ab3-34bfc1d4a221');

INSERT INTO C##MACIEK.TYTULY_RACHUNKU (ID_TYTULU_RACHUNKU, TYTUL)
VALUES ('8b52f7b1-c29b-4631-8b87-8e2dae28b077', 'Rachunek1');

INSERT INTO C##MACIEK.TYTULY_RACHUNKU (ID_TYTULU_RACHUNKU, TYTUL)
VALUES ('361b320f-9828-4ec2-bdd0-f209eb921388', 'RachunekZaWode');

INSERT INTO C##MACIEK.TYTULY_RACHUNKU (ID_TYTULU_RACHUNKU, TYTUL)
VALUES ('05031c05-18ce-49a5-abf9-9310ffc8c50f', 'ZaPrad');

INSERT INTO C##MACIEK.BUDYNKI (ID_BUDYNKU, DATA_MODERNIZACJI_TERMICZNEJ, DATA_ODDANIA_DO_UZYTKU, LICZBA_PIETER,
                               DATA_REMONTU_OGOLNEGO, CZY_ZDATNY_DO_MIESZKANIA, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('fbb3efa0-5519-46de-a0bb-01fa31aaf798', TIMESTAMP '2021-12-23 18:42:50', TIMESTAMP '2022-12-23 18:43:01', 6,
        TIMESTAMP '2019-12-23 18:43:22', 'T', '04678797-6435-45d1-a748-770b33a1917b',
        '76e3d25f-2705-4fbb-97cc-8b78613e80b6');

INSERT INTO C##MACIEK.BUDYNKI (ID_BUDYNKU, DATA_MODERNIZACJI_TERMICZNEJ, DATA_ODDANIA_DO_UZYTKU, LICZBA_PIETER,
                               DATA_REMONTU_OGOLNEGO, CZY_ZDATNY_DO_MIESZKANIA, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('6865c013-80b6-4b70-8f3f-65b52d6848b0', TIMESTAMP '2021-06-23 18:42:55', TIMESTAMP '2019-12-23 18:43:04', 5,
        TIMESTAMP '2018-12-23 18:43:27', 'T', '04678797-6435-45d1-a748-770b33a1917b',
        '2a6e402e-4178-4026-bda9-7695f65882cb');

INSERT INTO C##MACIEK.BUDYNKI (ID_BUDYNKU, DATA_MODERNIZACJI_TERMICZNEJ, DATA_ODDANIA_DO_UZYTKU, LICZBA_PIETER,
                               DATA_REMONTU_OGOLNEGO, CZY_ZDATNY_DO_MIESZKANIA, ID_SPOLDZIELNI, ID_ADRESU)
VALUES ('98d7fb80-90b3-4756-9fd0-90fe1ae0fa52', TIMESTAMP '2021-05-23 18:46:18', TIMESTAMP '2024-05-23 18:46:23', 6,
        TIMESTAMP '2023-12-23 18:46:31', 'T', '75ca0f58-4e24-4b01-9670-7f37e1932b86', 'bbf3bae2-fe9b-4737-94df-3eb5cdb3f221');

INSERT INTO C##MACIEK.MIESZKANIA (ID_MIESZKANIA, NR_MIESZKANIA, POWIERZCHNIA, LICZBA_POKOI, DATA_KONTROLI_GAZOWEJ,
                                  ID_BUDYNKU)
VALUES ('1bb482a4-0b9f-4b08-a95e-d06cfc61b7b3', '20', 40, 3, TIMESTAMP '2021-12-23 18:55:48',
        'fbb3efa0-5519-46de-a0bb-01fa31aaf798');

INSERT INTO C##MACIEK.MIESZKANIA (ID_MIESZKANIA, NR_MIESZKANIA, POWIERZCHNIA, LICZBA_POKOI, DATA_KONTROLI_GAZOWEJ,
                                  ID_BUDYNKU)
VALUES ('29f49f3a-165d-44d9-a0d0-036dc035f83a', '18', 35, 4, TIMESTAMP '2022-07-23 18:55:52',
        'fbb3efa0-5519-46de-a0bb-01fa31aaf798');

INSERT INTO C##MACIEK.MIESZKANIA (ID_MIESZKANIA, NR_MIESZKANIA, POWIERZCHNIA, LICZBA_POKOI, DATA_KONTROLI_GAZOWEJ,
                                  ID_BUDYNKU)
VALUES ('dcd8ff99-7a91-4868-90b2-4c5292c67246', '22', 35, 4, TIMESTAMP '2022-10-23 18:55:57',
        '98d7fb80-90b3-4756-9fd0-90fe1ae0fa52');

INSERT INTO C##MACIEK.MIESZKANCY (NR_MIESZKANCA, IMIE, NAZWISKO, ID_MIESZKANIA)
VALUES ('ec766cfc-8fa6-4951-8545-dbade95104ae', 'maciek', 'krajewski', '1bb482a4-0b9f-4b08-a95e-d06cfc61b7b3');

INSERT INTO C##MACIEK.MIESZKANCY (NR_MIESZKANCA, IMIE, NAZWISKO, ID_MIESZKANIA)
VALUES ('422fd53d-d886-4e48-93e4-119d9f3d831e', 'wiktor', 'fratczak', '1bb482a4-0b9f-4b08-a95e-d06cfc61b7b3');

INSERT INTO C##MACIEK.MIESZKANCY (NR_MIESZKANCA, IMIE, NAZWISKO, ID_MIESZKANIA)
VALUES ('b4d87987-5782-46a4-b078-7b59c03531a7', 'michal', 'sokala', '29f49f3a-165d-44d9-a0d0-036dc035f83a');

INSERT INTO C##MACIEK.MIESZKANCY (NR_MIESZKANCA, IMIE, NAZWISKO, ID_MIESZKANIA)
VALUES ('d25b8b82-10b6-47fe-a5ff-90ee112ff604', 'michal', 'krzyzanowski', '29f49f3a-165d-44d9-a0d0-036dc035f83a');

INSERT INTO C##MACIEK.WLASCICIELE_MIESZKAN (NR_MIESZKANCA, PESEL, NIP_FIRMY, NR_TELEFONU)
VALUES ('ec766cfc-8fa6-4951-8545-dbade95104ae', '12345228901', '1234567890', '759827855');

INSERT INTO C##MACIEK.WLASCICIELE_MIESZKAN (NR_MIESZKANCA, PESEL, NIP_FIRMY, NR_TELEFONU)
VALUES ('422fd53d-d886-4e48-93e4-119d9f3d831e', '09876143216', '0987654321', '785628752');

INSERT INTO C##MACIEK.MIESZKANIA_WLASCICIELI (ID_MIESZKANIA, NR_MIESZKANCA, DATA_OD, DATA_DO)
VALUES ('1bb482a4-0b9f-4b08-a95e-d06cfc61b7b3', 'ec766cfc-8fa6-4951-8545-dbade95104ae', TIMESTAMP '2021-12-23 19:02:32',
        TIMESTAMP '2026-07-28 19:02:48');

INSERT INTO C##MACIEK.MIESZKANIA_WLASCICIELI (ID_MIESZKANIA, NR_MIESZKANCA, DATA_OD, DATA_DO)
VALUES ('29f49f3a-165d-44d9-a0d0-036dc035f83a', 'ec766cfc-8fa6-4951-8545-dbade95104ae', TIMESTAMP '2021-12-15 19:02:35',
        TIMESTAMP '2025-05-25 19:02:53');

INSERT INTO C##MACIEK.MIESZKANIA_WLASCICIELI (ID_MIESZKANIA, NR_MIESZKANCA, DATA_OD, DATA_DO)
VALUES ('dcd8ff99-7a91-4868-90b2-4c5292c67246', '422fd53d-d886-4e48-93e4-119d9f3d831e', TIMESTAMP '2021-05-25 19:02:42',
        TIMESTAMP '2025-07-30 19:02:58');
INSERT INTO C##MACIEK.OGLOSZENIA (ID_OGLOSZENIA, DATA_WYDANIA, TRESC, TYTUL, ID_SPOLDZIELNI)
VALUES ('fefc4c00-077d-4b19-8dc8-8bb0768c7520', TIMESTAMP '2023-07-23 19:03:53', 'blablabla', 'ogloszenie1',
        '75ca0f58-4e24-4b01-9670-7f37e1932b86');

INSERT INTO C##MACIEK.OGLOSZENIA (ID_OGLOSZENIA, DATA_WYDANIA, TRESC, TYTUL, ID_SPOLDZIELNI)
VALUES ('154e284f-1303-4e36-b3de-db32669e7cfe', TIMESTAMP '2022-12-23 19:05:27', 'lololololol', 'ogloszenie2',
        '75ca0f58-4e24-4b01-9670-7f37e1932b86');

INSERT INTO C##MACIEK.OGLOSZENIA (ID_OGLOSZENIA, DATA_WYDANIA, TRESC, TYTUL, ID_SPOLDZIELNI)
VALUES ('b4c574bd-d8b2-4f4a-aada-4ddee3ce1afc', TIMESTAMP '2023-09-23 19:05:31', 'jebackomandosa', 'ogloszenie3',
        '04678797-6435-45d1-a748-770b33a1917b');

INSERT INTO C##MACIEK.RACHUNKI (ID_RACHUNKU, DATA_WYSTAWIENIA, KWOTA, ID_TYTULU_RACHUNKU, ID_SPOLDZIELNI, NR_MIESZKANCA)
VALUES ('7f953b07-9deb-43c1-895b-2eb9d0aa10b9', TIMESTAMP '2023-12-15 18:38:38', 200.00,
        '8b52f7b1-c29b-4631-8b87-8e2dae28b077', '04678797-6435-45d1-a748-770b33a1917b',
        'ec766cfc-8fa6-4951-8545-dbade95104ae');

INSERT INTO C##MACIEK.RACHUNKI (ID_RACHUNKU, DATA_WYSTAWIENIA, KWOTA, ID_TYTULU_RACHUNKU, ID_SPOLDZIELNI, NR_MIESZKANCA)
VALUES ('e699bc66-fd0d-48af-bfc6-0e15fafb52e1', TIMESTAMP '2023-11-23 18:40:34', 200.00,
        '361b320f-9828-4ec2-bdd0-f209eb921388', '04678797-6435-45d1-a748-770b33a1917b',
        'ec766cfc-8fa6-4951-8545-dbade95104ae');

INSERT INTO C##MACIEK.RACHUNKI (ID_RACHUNKU, DATA_WYSTAWIENIA, KWOTA, ID_TYTULU_RACHUNKU, ID_SPOLDZIELNI, NR_MIESZKANCA)
VALUES ('edee24e2-c351-4809-8ce2-3d667f3b4adb', TIMESTAMP '2023-06-16 18:41:29', 300.00,
        '361b320f-9828-4ec2-bdd0-f209eb921388', '75ca0f58-4e24-4b01-9670-7f37e1932b86',
        '422fd53d-d886-4e48-93e4-119d9f3d831e');