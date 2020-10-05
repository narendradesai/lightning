<?php

/**
 * @file
 * Contains install-time code for the Lightning profile.
 */

/**
 * Implements hook_install_tasks().
 */
function lightning_install_tasks() {
  return [
    'lightning_set_logo' => [],
  ];
}

/**
 * Set the path to the logo and favicon based on install directory.
 */
function lightning_set_logo() {
  $dir = Drupal::service('extension.list.profile')->getPath('lightning');

  Drupal::configFactory()
    ->getEditable('system.theme.global')
    ->set('logo.path', $dir . '/lightning.png')
    ->set('favicon.path', $dir . '/favicon.ico')
    ->save(TRUE);
}
