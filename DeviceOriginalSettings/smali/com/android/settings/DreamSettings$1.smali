.class Lcom/flyme/DeviceOriginalSettings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 142
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/DreamSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/DreamSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/DreamSettings;

    # getter for: Lcom/flyme/DeviceOriginalSettings/DreamSettings;->mBackend:Lcom/flyme/DeviceOriginalSettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/DreamSettings;->access$100(Lcom/flyme/DeviceOriginalSettings/DreamSettings;)Lcom/flyme/DeviceOriginalSettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/DreamBackend;->startDreaming()V

    .line 146
    return-void
.end method
