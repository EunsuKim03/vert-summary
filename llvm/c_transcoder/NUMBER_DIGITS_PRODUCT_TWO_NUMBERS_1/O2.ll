; ModuleID = 'benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %8 = sitofp i32 %7 to double
  %9 = tail call double @log10(double noundef %8) #4
  %10 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %11 = sitofp i32 %10 to double
  %12 = tail call double @log10(double noundef %11) #4
  %13 = fadd double %9, %12
  %14 = tail call double @llvm.floor.f64(double %13)
  %15 = fadd double %14, 1.000000e+00
  %16 = fptosi double %15 to i32
  br label %17

17:                                               ; preds = %2, %6
  %18 = phi i32 [ %16, %6 ], [ 1, %2 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
