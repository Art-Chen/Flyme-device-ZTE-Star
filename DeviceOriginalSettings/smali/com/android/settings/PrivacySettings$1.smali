.class Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 146
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 168
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v3

    .line 149
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 150
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 151
    .local v2, "result":Z
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$000(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 152
    if-nez v1, :cond_2

    .line 155
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$100(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)V

    :cond_1
    :goto_1
    move v3, v2

    .line 168
    goto :goto_0

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v4, v3}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$200(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;Z)V

    .line 158
    const/4 v2, 0x1

    goto :goto_1

    .line 160
    :cond_3
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$300(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$400(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v2, 0x1

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/PrivacySettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/PrivacySettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/PrivacySettings;->access$300(Lcom/flyme/DeviceOriginalSettings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method
