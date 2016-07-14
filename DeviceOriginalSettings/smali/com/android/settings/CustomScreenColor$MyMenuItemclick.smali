.class Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;
.super Ljava/lang/Object;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuItemclick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 699
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 713
    :goto_0
    return v1

    .line 701
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->resotreBackgroundByDefault()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->access$300(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->access$400(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V

    goto :goto_0

    .line 707
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->selectPicFromGallery2()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->access$400(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V

    goto :goto_0

    .line 710
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor$MyMenuItemclick;->this$0:Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;

    # invokes: Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->restoreDefaultHSCI()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;->access$500(Lcom/flyme/DeviceOriginalSettings/CustomScreenColor;)V

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x7f100314
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
