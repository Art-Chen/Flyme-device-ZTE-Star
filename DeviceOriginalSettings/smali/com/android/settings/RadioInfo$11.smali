.class Lcom/flyme/DeviceOriginalSettings/RadioInfo$11;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$11;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$11;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    const-class v2, Lcom/flyme/DeviceOriginalSettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 912
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/RadioInfo$11;->this$0:Lcom/flyme/DeviceOriginalSettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/flyme/DeviceOriginalSettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 913
    const/4 v1, 0x1

    return v1
.end method
