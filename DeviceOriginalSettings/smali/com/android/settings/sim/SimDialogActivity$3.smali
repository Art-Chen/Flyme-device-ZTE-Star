.class Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;

    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    .line 173
    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$id:I

    packed-switch v3, :pswitch_data_0

    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dialog type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in SIM dialog."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :pswitch_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 176
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 195
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_0
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;

    invoke-virtual {v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->finish()V

    .line 196
    return-void

    .line 179
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 181
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v4, v3}, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->access$300(Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 187
    .end local v0    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 188
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v3, v4}, Lcom/flyme/DeviceOriginalSettings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
