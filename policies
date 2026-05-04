#!/bin/sh

sudo mkdir -p /etc/brave/policies/managed

printf '%s\n' '{
    "BraveRewardsDisabled": true,
    "BraveWalletDisabled": true,
    "BraveVPNDisabled": 1,
    "BraveAIChatEnabled": false,
    "BraveTalkDisabled": true,
    "BraveNewsDisabled": true,
    "BravePlaylistEnabled": false,
    "BraveWaybackMachineEnabled": false,
    "BraveSpeedreaderEnabled": false,

    "BraveP3AEnabled": false,
    "BraveStatsPingEnabled": false,
    "BraveWebDiscoveryEnabled": false,
    "MetricsReportingEnabled": false,

    "PasswordManagerEnabled": false,
    "PasswordManagerPasskeysEnabled": false,
    "PasswordLeakDetectionEnabled": false,
    "AutofillAddressEnabled": false,
    "AutofillCreditCardEnabled": false,
    "PaymentMethodQueryEnabled": false,

    "EnableMediaRouter": false,
    "ShowCastIconInToolbar": false,
    "ShowCastSessionsStartedByOtherDevices": false,

    "DefaultBraveAdblockSetting": 2,
    "DefaultBraveHttpsUpgradeSetting": 2,
    "HttpsOnlyMode": "force_enabled",
    "DefaultBraveFingerprintingV2Setting": 3,
    "DefaultCookiesSetting": 4,
    "DefaultBraveRemember1PStorageSetting": 2,

    "DnsOverHttpsMode": "secure",
    "DnsOverHttpsTemplates": "https://base.dns.mullvad.net/dns-query",

    "TorDisabled": true,
    "DefaultJavaScriptJitSetting": 2
  }' | sudo tee /etc/brave/policies/managed/brave-policies.json > /dev/null
