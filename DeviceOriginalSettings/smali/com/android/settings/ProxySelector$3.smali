.class Lcom/flyme/DeviceOriginalSettings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/ProxySelector;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/ProxySelector$3;->this$0:Lcom/flyme/DeviceOriginalSettings/ProxySelector;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/ProxySelector;->populateFields()V

    .line 266
    return-void
.end method
