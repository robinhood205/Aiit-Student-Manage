# -*- coding: utf-8 -*-
Students::Application.routes.draw do

  resources :status_records


  resources :tuitions


  resources :status_records
  resources :privacies
  resources :aiit_members
#  get "admin/aiit_member/new" => "aiit_members#new"

  resources :exam_lists
  resources :tuitions
  resources :student_lists
  resources :prospects
  resources :guarantors
  resources :guarantors
  resources :status_records
  resources :mibuns
  resources :guarantors

  # password(パスワード確認),registration(サインアップ)機能へのルーティングを除外
  devise_for :users, only: [:session]

  # RailsAdmin
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  # ダッシュボード画面をrootに設定
  root :to => "rails_admin/main#dashboard"

  # インポート機能のroute設定
  mount RailsAdminImport::Engine => '/rails_admin_import', :as => 'rails_admin_import'

end
