.class Lcom/flyme/DeviceOriginalSettings/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DreamSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DreamSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DreamSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DreamSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/DreamSettings;)Lcom/flyme/DeviceOriginalSettings/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/flyme/DeviceOriginalSettings/DreamBackend;->setActivatedOnDock(Z)V

    .line 205
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DreamSettings$4;->this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DreamSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DreamSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/DreamSettings;)Lcom/flyme/DeviceOriginalSettings/DreamBackend;

    move-result-object v0

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 206
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 207
    return-void

    :cond_3
    move v0, v1

    .line 204
    goto :goto_0
.end method
