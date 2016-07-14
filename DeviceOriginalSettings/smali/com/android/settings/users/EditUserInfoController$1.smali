.class Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->clear()V

    .line 187
    return-void
.end method
