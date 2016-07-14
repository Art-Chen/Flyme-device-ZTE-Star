.class Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings$1;
.super Ljava/lang/Object;
.source "BlacklistSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;

    const-wide/16 v2, -0x1

    # invokes: Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/blacklist/BlacklistSettings;J)V

    .line 105
    return-void
.end method
