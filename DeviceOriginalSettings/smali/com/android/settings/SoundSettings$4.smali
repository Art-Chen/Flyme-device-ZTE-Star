.class Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 632
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1100(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 633
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v2, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1100(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/DeviceOriginalSettings/DefaultRingtonePreference;

    .line 635
    .local v1, "preference":Lcom/flyme/DeviceOriginalSettings/DefaultRingtonePreference;
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1200(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/flyme/DeviceOriginalSettings/DefaultRingtonePreference;->getSubId()I

    move-result v5

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v4, v6, v5}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1300(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 637
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    .end local v1    # "preference":Lcom/flyme/DeviceOriginalSettings/DefaultRingtonePreference;
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 640
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mHandler:Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1000(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 643
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1400(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 644
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1200(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x1

    # invokes: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    invoke-static {v4, v7, v5}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1300(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 646
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 647
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/SoundSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/SoundSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/SoundSettings;->mHandler:Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/SoundSettings;->access$1000(Lcom/flyme/DeviceOriginalSettings/SoundSettings;)Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/flyme/DeviceOriginalSettings/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 650
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
