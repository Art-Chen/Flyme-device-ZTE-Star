.class Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$3;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 411
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 414
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x0

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest(Z)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$400(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;Z)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$3;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->updateCheckedState(Z)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$500(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;Z)V

    goto :goto_0
.end method
