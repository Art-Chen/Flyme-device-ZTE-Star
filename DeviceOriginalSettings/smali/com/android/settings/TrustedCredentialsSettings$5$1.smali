.class Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 698
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;

    iget-object v1, v1, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;->this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;->val$certHolder:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 699
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5$1;->this$1:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 701
    return-void
.end method
