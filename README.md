About adios2
============

Home: https://www.olcf.ornl.gov/center-projects/adios/

Package license: Apache-2.0

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/adios2-feedstock/blob/master/LICENSE.txt)

Summary: Next generation of ADIOS developed in the Exascale Computing Program

Development: https://github.com/ornladios/ADIOS2

Documentation: https://adios2.readthedocs.io

ADIOS2 is the latest implementation of the ADaptable Input Output System,
ADIOS. This brand new architecture was designed to continue supporting the
performance legacy of ADIOS, and extend its current capabilities to address
current and future input/output (IO) challenges in the scientific data
lifecycle through effective research and development (R&D) activities.


Current build status
====================


<table><tr>
    <td>Travis</td>
    <td>
      <a href="https://travis-ci.com/conda-forge/adios2-feedstock">
        <img alt="macOS" src="https://img.shields.io/travis/com/conda-forge/adios2-feedstock/master.svg?label=macOS">
      </a>
    </td>
  </tr><tr>
    <td>Drone</td>
    <td>
      <a href="https://cloud.drone.io/conda-forge/adios2-feedstock">
        <img alt="linux" src="https://img.shields.io/drone/build/conda-forge/adios2-feedstock/master.svg?label=Linux">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_aarch64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpinompinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpinompinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpinompinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpinompinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpinompinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpinompinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpinompinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpinompinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=linux&configuration=linux_ppc64le_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpimpichnumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpimpichnumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpimpichnumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpimpichnumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpinompinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpinompinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpinompinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpinompinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpiopenmpinumpy1.16python3.6.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpiopenmpinumpy1.16python3.7.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpiopenmpinumpy1.16python3.8.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_64_mpiopenmpinumpy1.19python3.9.____cpythonpython_implcpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpimpichpython3.8.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpimpichpython3.8.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpimpichpython3.9.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpimpichpython3.9.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpinompipython3.8.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpinompipython3.8.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpinompipython3.9.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpinompipython3.9.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpiopenmpipython3.8.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpiopenmpipython3.8.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64_mpiopenmpipython3.9.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=osx&configuration=osx_arm64_mpiopenmpipython3.9.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_numpy1.16python3.6.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=win&configuration=win_64_numpy1.16python3.6.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_numpy1.16python3.7.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=win&configuration=win_64_numpy1.16python3.7.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_numpy1.16python3.8.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=win&configuration=win_64_numpy1.16python3.8.____cpython" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64_numpy1.19python3.9.____cpython</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=7026&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adios2-feedstock?branchName=master&jobName=win&configuration=win_64_numpy1.19python3.9.____cpython" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-adios2-green.svg)](https://anaconda.org/conda-forge/adios2) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/adios2.svg)](https://anaconda.org/conda-forge/adios2) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/adios2.svg)](https://anaconda.org/conda-forge/adios2) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/adios2.svg)](https://anaconda.org/conda-forge/adios2) |

Installing adios2
=================

Installing `adios2` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
```

Once the `conda-forge` channel has been enabled, `adios2` can be installed with:

```
conda install adios2
```

It is possible to list all of the versions of `adios2` available on your platform with:

```
conda search adios2 --channel conda-forge
```


About conda-forge
=================

[![Powered by NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](http://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/)
and [TravisCI](https://travis-ci.com/) it is possible to build and upload installable
packages to the [conda-forge](https://anaconda.org/conda-forge)
[Anaconda-Cloud](https://anaconda.org/) channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating adios2-feedstock
=========================

If you would like to improve the adios2 recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/adios2-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ax3l](https://github.com/ax3l/)
* [@chuckatkins](https://github.com/chuckatkins/)
* [@williamfgc](https://github.com/williamfgc/)

