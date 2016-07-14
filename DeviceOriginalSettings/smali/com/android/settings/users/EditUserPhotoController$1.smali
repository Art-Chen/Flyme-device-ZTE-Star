.class Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;->showUpdatePhotoPopup()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;->access$000(Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;)V

    .line 96
    return-void
.end method
