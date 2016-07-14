.class public Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern;
.super Lcom/flyme/DeviceOriginalSettings/SettingsActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$1;,
        Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$Stage;,
        Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/flyme/DeviceOriginalSettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f090767

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/ConfirmLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
