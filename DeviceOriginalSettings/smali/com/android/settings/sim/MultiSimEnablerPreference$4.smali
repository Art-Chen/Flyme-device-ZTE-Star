.class Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$4;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 423
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->mConfirmationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->access$602(Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 427
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference$4;->this$0:Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/sim/MultiSimEnablerPreference;->update()V

    .line 428
    return-void
.end method
