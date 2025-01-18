CREATE DATABASE IF NOT EXISTS HOROSCOPO;
USE HOROSCOPO;
CREATE TABLE IF NOT EXISTS horoscopo(
                          id_animal INT primary KEY auto_increment,
                          animal VARCHAR(30),
                          fecha_inicio DATE unique,
                          fecha_fin DATE unique
);
CREATE TABLE IF NOT EXISTS usuarios(
                         id_usuario int primary key auto_increment,
                         nombre VARCHAR(30),
                         username VARCHAR(30),
                         email VARCHAR(30),
                         fecha_nacimiento DATE,
                         password VARCHAR(30 )
);


INSERT INTO usuarios (nombre, username, email, fecha_nacimiento, password)
VALUES ('admin', 'admin', 'admin@mail.com', '1990-03-15', 'admin');



select * from usuarios;

INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Rata', '1924-02-04', '1925-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Buey', '1925-02-04', '1926-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Tigre', '1926-02-05', '1927-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Conejo', '1927-02-04', '1928-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Dragón', '1928-02-05', '1929-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Serpiente', '1929-02-04', '1930-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Caballo', '1930-02-05', '1931-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cabra', '1931-02-04', '1932-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Mono', '1932-02-05', '1933-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Gallo', '1933-02-04', '1934-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Perro', '1934-02-05', '1935-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cerdo', '1935-02-04', '1936-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Rata', '1936-02-05', '1937-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Buey', '1937-02-04', '1938-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Tigre', '1938-02-05', '1939-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Conejo', '1939-02-04', '1940-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Dragón', '1940-02-05', '1941-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Serpiente', '1941-02-04', '1942-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Caballo', '1942-02-05', '1943-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cabra', '1943-02-04', '1944-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Mono', '1944-02-05', '1945-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Gallo', '1945-02-04', '1946-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Perro', '1946-02-05', '1947-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cerdo', '1947-02-04', '1948-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Rata', '1948-02-05', '1949-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Buey', '1949-02-04', '1950-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Tigre', '1950-02-05', '1951-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Conejo', '1951-02-04', '1952-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Dragón', '1952-02-05', '1953-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Serpiente', '1953-02-04', '1954-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Caballo', '1954-02-05', '1955-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cabra', '1955-02-04', '1956-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Mono', '1956-02-05', '1957-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Gallo', '1957-02-04', '1958-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Perro', '1958-02-05', '1959-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cerdo', '1959-02-04', '1960-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Rata', '1960-02-05', '1961-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Buey', '1961-02-04', '1962-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Tigre', '1962-02-05', '1963-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Conejo', '1963-02-04', '1964-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Dragón', '1964-02-05', '1965-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Serpiente', '1965-02-04', '1966-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Caballo', '1966-02-05', '1967-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cabra', '1967-02-04', '1968-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Mono', '1968-02-05', '1969-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Gallo', '1969-02-04', '1970-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Perro', '1970-02-05', '1971-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Cerdo', '1971-02-04', '1972-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Rata', '1972-02-05', '1973-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Buey', '1973-02-04', '1974-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Tigre', '1974-02-05', '1975-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Conejo', '1975-02-04', '1976-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Dragón', '1976-02-05', '1977-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Serpiente', '1977-02-04', '1978-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin)VALUES ('Caballo', '1978-02-05', '1979-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cabra', '1979-02-04', '1980-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Mono', '1980-02-05', '1981-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Gallo', '1981-02-04', '1982-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Perro', '1982-02-05', '1983-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cerdo', '1983-02-04', '1984-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Rata', '1984-02-05', '1985-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Buey', '1985-02-04', '1986-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Tigre', '1986-02-05', '1987-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Conejo', '1987-02-04', '1988-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Dragón', '1988-02-05', '1989-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Serpiente', '1989-02-04', '1990-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Caballo', '1990-02-05', '1991-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cabra', '1991-02-04', '1992-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Mono', '1992-02-05', '1993-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Gallo', '1993-02-04', '1994-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Perro', '1994-02-05', '1995-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cerdo', '1995-02-04', '1996-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Rata', '1996-02-05', '1997-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Buey', '1997-02-04', '1998-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Tigre', '1998-02-05', '1999-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Conejo', '1999-02-04', '2000-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Dragón', '2000-02-05', '2001-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Serpiente', '2001-02-04', '2002-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Caballo', '2002-02-05', '2003-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cabra', '2003-02-04', '2004-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Mono', '2004-02-05', '2005-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Gallo', '2005-02-04', '2006-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Perro', '2006-02-05', '2007-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cerdo', '2007-02-04', '2008-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Rata', '2008-02-05', '2009-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Buey', '2009-02-04', '2010-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Tigre', '2010-02-05', '2011-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Conejo', '2011-02-04', '2012-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Dragón', '2012-02-05', '2013-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Serpiente', '2013-02-04', '2014-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Caballo', '2014-02-05', '2015-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cabra', '2015-02-04', '2016-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Mono', '2016-02-05', '2017-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Gallo', '2017-02-04', '2018-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Perro', '2018-02-05', '2019-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Cerdo', '2019-02-04', '2020-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Rata', '2020-02-05', '2021-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Buey', '2021-02-04', '2022-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Tigre', '2022-02-05', '2023-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Conejo', '2023-02-04', '2024-02-04');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Dragón', '2024-02-05', '2025-02-03');
INSERT INTO horoscopo (animal, fecha_inicio, fecha_fin) VALUES ('Serpiente', '2025-02-04', '2026-02-04');
