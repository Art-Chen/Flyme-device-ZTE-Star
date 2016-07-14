.class Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$4;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->enableUms()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;->access$400(Lcom/flyme/DeviceOriginalSettings/deviceinfo/UsbSettings;)V

    .line 303
    return-void
.end method
