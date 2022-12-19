CREATE TABLE generic (
  id TEXT,
  name TEXT,
  description TEXT,
  have_pub TEXT,
  have_pod TEXT,
  have_img TEXT,
  have_video TEXT,
  have_profile TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE generic_children (
  generic_id TEXT,
  id TEXT,
  name TEXT,
  description TEXT,
  have_pub TEXT,
  have_pod TEXT,
  have_img TEXT,
  have_video TEXT,
  have_profile TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_id) REFERENCES generic(id)
);

CREATE TABLE generic_children_publication (
  generic_children_id TEXT,
  id TEXT,
  link TEXT,
  title TEXT,
  year TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_children_id) REFERENCES generic_children(id)
);

CREATE TABLE generic_children_children (
  generic_children_id TEXT,
  id TEXT,
  name TEXT,
  description TEXT,
  have_pub TEXT,
  have_pod TEXT,
  have_img TEXT,
  have_video TEXT,
  have_profile TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_children_id) REFERENCES generic_children(id)
);

CREATE TABLE generic_children_children_publication (
  generic_children_children_id TEXT,
  id TEXT,
  link TEXT,
  title TEXT,
  year TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (generic_children_children_id) REFERENCES generic_children_children(id)
);