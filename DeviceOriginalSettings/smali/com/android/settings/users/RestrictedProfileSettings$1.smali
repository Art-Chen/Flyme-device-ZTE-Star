.class Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings$1;->this$0:Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;

    # invokes: Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;->removeUser()V
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;->access$000(Lcom/flyme/DeviceOriginalSettings/users/RestrictedProfileSettings;)V

    .line 136
    return-void
.end method
