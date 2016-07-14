.class Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$400(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$500(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$300(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$400(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$400(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mPinDialog:Lcom/flyme/DeviceOriginalSettings/EditPinPreference;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$500(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Lcom/flyme/DeviceOriginalSettings/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/flyme/DeviceOriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/IccLockSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/IccLockSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/IccLockSettings;->access$600(Lcom/flyme/DeviceOriginalSettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
