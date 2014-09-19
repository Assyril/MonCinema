alter table new_ACTEURS add constraint FK_EST_DE foreign key (Nr_Nation)
      references new_NATIONALITES (Nr_Nation) on delete restrict on update restrict;

alter table new_ACTEURS add constraint FK_HERITAGE_1 foreign key (Nr_Individus)
      references new_INDIVIDUS (Nr_Individus) on delete restrict on update restrict;

alter table new_A_ECRIT add constraint FK_A_ECRIT foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_A_ECRIT add constraint FK_A_ECRIT2 foreign key (Nr_Individus)
      references new_SCENARISTE (Nr_Individus) on delete restrict on update restrict;

alter table new_EST_CLASSE_DANS_LE add constraint FK_EST_CLASSE_DANS_LE foreign key (Id_Genre)
      references new_GENRE (Id_Genre) on delete restrict on update restrict;

alter table new_EST_CLASSE_DANS_LE add constraint FK_EST_CLASSE_DANS_LE2 foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_EST_D_ORIGINE add constraint FK_EST_D_ORIGINE foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_EST_D_ORIGINE add constraint FK_EST_D_ORIGINE2 foreign key (Nr_Nation)
      references new_NATIONALITES (Nr_Nation) on delete restrict on update restrict;

alter table new_EST_INTERPRETER_PAR add constraint FK_EST_INTERPRETER_PAR foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_EST_INTERPRETER_PAR add constraint FK_EST_INTERPRETER_PAR2 foreign key (Nr_Individus)
      references new_ACTEURS (Nr_Individus) on delete restrict on update restrict;

alter table new_EST_LA_VOIX_OFF add constraint FK_EST_LA_VOIX_OFF foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_EST_LA_VOIX_OFF add constraint FK_EST_LA_VOIX_OFF2 foreign key (Nr_Individus)
      references new_ACTEURS (Nr_Individus) on delete restrict on update restrict;

alter table new_EST_REALISE_PAR add constraint FK_EST_REALISE_PAR foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_EST_REALISE_PAR add constraint FK_EST_REALISE_PAR2 foreign key (Nr_Individus)
      references new_REALISATEURS (Nr_Individus) on delete restrict on update restrict;

alter table new_NOTE add constraint FK_ATTRIBUT_UNE foreign key (Nr_cinephile)
      references new_CINEPHILE (Nr_cinephile) on delete restrict on update restrict;

alter table new_NOTE add constraint FK_JUGE foreign key (Nr_Film)
      references new_FILM (Nr_Film) on delete restrict on update restrict;

alter table new_REALISATEURS add constraint FK_A_LA foreign key (Nr_Nation)
      references new_NATIONALITES (Nr_Nation) on delete restrict on update restrict;

alter table new_REALISATEURS add constraint FK_HERITAGE_2 foreign key (Nr_Individus)
      references new_INDIVIDUS (Nr_Individus) on delete restrict on update restrict;

alter table new_SCENARISTE add constraint FK_HERITAGE_3 foreign key (Nr_Individus)
      references new_INDIVIDUS (Nr_Individus) on delete restrict on update restrict;

