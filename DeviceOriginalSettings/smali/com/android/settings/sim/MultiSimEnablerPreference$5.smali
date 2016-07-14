.class Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    const-string v2, "Received onSubscriptionChanged"

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$700(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$100(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flyme/DeviceOriginalSettings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 437
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    # getter for: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->mTargetState:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$800(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v2, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$5;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->processSetUiccDone()V
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$900(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;)V

    .line 440
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
