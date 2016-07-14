.class Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;
.super Landroid/os/AsyncTask;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;->this$1:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;->this$1:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;

    # getter for: Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->access$100(Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;->this$1:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;

    # getter for: Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;
    invoke-static {v1}, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->access$000(Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2$1;->this$1:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController$2;->this$0:Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;

    # getter for: Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;
    invoke-static {v2}, Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;->access$200(Lcom/flyme/DeviceOriginalSettings/users/EditUserInfoController;)Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method
