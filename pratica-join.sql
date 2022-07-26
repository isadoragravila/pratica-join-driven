-- QUESTÃO 1:
SELECT users.id, users.name, cities.name AS city FROM users JOIN cities ON users."cityId" = cities.id WHERE cities.name = 'Rio de Janeiro';

-- QUESTÃO 2:
SELECT t.id, w.name AS writer, r.name AS recipient, t.message FROM testimonials t JOIN users w ON t."writerId" = w.id JOIN users r ON t."recipientId" = r.id;

-- QUESTÃO 3:
SELECT u.id, u.name, c.name AS course, s.name AS school, e."endDate" FROM educations e JOIN users u ON e."userId" = u.id JOIN courses c ON e."courseId" = c.id JOIN schools s ON e."schoolId" = s.id WHERE e.status = 'finished' AND e."userId" = 30;

-- QUESTÃO 4:
SELECT u.id, u.name, r.name AS role, c.name AS company, e."startDate" FROM experiences e JOIN users u ON e."userId" = u.id JOIN roles r ON e."roleId" = r.id JOIN companies c ON e."companyId" = c.id WHERE e."endDate" IS NULL AND e."userId" = 50;

-- QUESTÃO BÔNUS:
SELECT s.id, s.name AS school, cour.name AS course, comp.name AS company, r.name AS role FROM applicants a JOIN educations edu ON a."userId" = edu."userId" JOIN schools s ON edu."schoolId" = s.id JOIN courses cour ON edu."courseId" = cour.id JOIN jobs j ON a."jobId" = j.id JOIN companies comp ON j."companyId" = comp.id JOIN roles r ON j."roleId" = r.id WHERE r.name = 'Software Engineer' AND j."companyId" = 10 AND j.active = true;