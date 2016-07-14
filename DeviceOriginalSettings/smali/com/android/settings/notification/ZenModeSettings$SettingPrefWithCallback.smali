.class Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;
.super Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingPrefWithCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

.field private mValue:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 628
    invoke-direct/range {p0 .. p5}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 629
    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 667
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mDefault:I

    invoke-static {v0, v1, v2, v3}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 2
    .param p1, "settings"    # Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;

    .prologue
    .line 654
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->init(Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    .line 655
    .local v0, "ret":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/flyme/DeviceOriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 657
    return-object v0
.end method

.method public setCallback(Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    .line 633
    return-void
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 644
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 649
    :goto_0
    return v0

    .line 645
    :cond_0
    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 646
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mCallback:Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    invoke-interface {v0, p2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;->onSettingSelected(I)V

    .line 649
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setValueWithoutCallback(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 662
    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 663
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 639
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 640
    return-void
.end method
