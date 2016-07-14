.class Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;

    # getter for: Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->access$000(Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;

    # setter for: Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->mChallengeSucceeded:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->access$102(Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment$1;->this$0:Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;

    # setter for: Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->mChallengeRequested:Z
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;->access$002(Lcom/flyme/DeviceOriginalSettings/RestrictedSettingsFragment;Z)Z

    .line 67
    :cond_0
    return-void
.end method
