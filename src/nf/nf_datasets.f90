module nf_datasets

  !! This module provides URLs to archived models and datasets,
  !! for use in testing and examples, as well as a subroutine to download
  !! and unpack these files.

  implicit none

  private

  public :: download_and_unpack, keras_model_dense_mnist_url, mnist_url

  character(*), parameter :: keras_snippets_baseurl = &
    'https://github.com/neural-fortran/keras-snippets/files'
  character(*), parameter :: neural_fortran_baseurl = &
    'https://github.com/modern-fortran/neural-fortran/files'
  character(*), parameter :: keras_model_dense_mnist_url = &
    keras_snippets_baseurl // '/8788739/keras_dense_mnist.tar.gz'
  character(*), parameter :: mnist_url = &
    neural_fortran_baseurl // '/8498876/mnist.tar.gz'

  interface

    module subroutine download_and_unpack(url)
      !! Download and unpack a file from `url`.
      character(*), intent(in) :: url
        !! URL to download from
    end subroutine download_and_unpack

  end interface

end module nf_datasets
