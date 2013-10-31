.class public Lcom/cyanogenmod/settings/device/DockFragmentActivity;
.super Landroid/preference/PreferenceFragment;
.source "DockFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "dock_audio"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, dockAudio:Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.cyanogenmod.settings.SamsungDock"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, i:Landroid/content/Intent;
    const-string v4, "data"

    if-eqz v0, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 71
    return-void

    .line 69
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/device/DockFragmentActivity;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/device/DockFragmentActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 46
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, key:Ljava/lang/String;
    const-string v3, "DeviceSettings_Dock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v3, "dock_audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 57
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "1"

    .line 58
    .local v0, boxValue:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.cyanogenmod.settings.SamsungDock"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, i:Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 62
    .end local v0           #boxValue:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 57
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
