.class Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver$1;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver$1;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;->detectChangeAndNotify()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;->access$000(Lcom/flyme/DeviceOriginalSettings/sim/SimBootReceiver;)V

    .line 168
    return-void
.end method