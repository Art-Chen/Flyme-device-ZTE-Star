.class Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/LocalePicker;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->this$0:Lcom/flyme/DeviceOriginalSettings/LocalePicker;

    iput p2, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->this$0:Lcom/flyme/DeviceOriginalSettings/LocalePicker;

    iget v1, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/LocalePicker;->removeDialog(I)V

    .line 101
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->this$0:Lcom/flyme/DeviceOriginalSettings/LocalePicker;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/LocalePicker$1;->this$0:Lcom/flyme/DeviceOriginalSettings/LocalePicker;

    # getter for: Lcom/flyme/DeviceOriginalSettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/LocalePicker;->access$000(Lcom/flyme/DeviceOriginalSettings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 103
    return-void
.end method
